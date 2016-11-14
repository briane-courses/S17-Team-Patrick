﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace SOFENGG_Order_Request_Document.Model.Database.Interface
{
    public class DBMySqlGetMailingInfo: DBMySqlSelectConnection
    {
        public MailingInfo[] mailingInfoList;
        private MySqlCommand tempCmd;

        public void SetQueryForOneMailInfo(int mailingId)
        {
            tempCmd.CommandText = string.Format("SELECT * FROM {0} WHERE {1} = '" + mailingId, MailingInfo.Table, MailingInfo.ColStudentInfoId);

        }

        public void SetQueryForAllMailInfo(int studentInfoId)
        {
            tempCmd.CommandText = string.Format("SELECT * FROM {0} WHERE {1} = '" + studentInfoId, MailingInfo.Table, MailingInfo.ColStudentInfoId);

        }

        protected override void SetQuery()
        {
            Cmd.CommandText = tempCmd.CommandText;
            Cmd.Prepare();
        }

        public override void Parse()
        {
            mailingInfoList = new MailingInfo[ObjectList.Length];
            for (int i = 0; i < mailingInfoList.Length; i++)
            {
                mailingInfoList[i] = new MailingInfo()
                {
                    Id = int.Parse(ObjectList[i][MailingInfo.ColMailingId].ToString()),
                    MailingAddress = int.Parse(ObjectList[i][MailingInfo.ColMailingAddress].ToString()),
                    ZipCode = int.Parse(ObjectList[i][MailingInfo.ColZipCode].ToString()),
                    DeliveryArea = getDeliveryArea(int.Parse(ObjectList[i][MailingInfo.ColDeliveryAreaId].ToString())),
                    ContactNo = ObjectList[i][MailingInfo.ColContactNo].ToString(),
                };
            }
        }

        public DeliveryArea getDeliveryArea(int mailingInfoDeliveryId)
        {
            var deliveryAreaDB = new DBMySqlGetDeliveryArea();
            deliveryAreaDB.ExecuteQuery();

            for (int i = 0; i < deliveryAreaDB.deliveryAreaList.Length; i++)
            {
                if (deliveryAreaDB.deliveryAreaList[i].Id == mailingInfoDeliveryId)
                {
                    return deliveryAreaDB.deliveryAreaList[i];
                }
            }
            return null;
        }
    }
}