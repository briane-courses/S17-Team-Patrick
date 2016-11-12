﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SOFENGG_Order_Request_Document.Model
{
    public enum DegreeLevelEnum
    {
        Bachelors = 0,
        Masters = 1,
        Doctorate = 2
    }
    public enum CampusEnum
    {
        Taft = 0,
        STC = 1
    }

    public class Degree
    {
        public const string Table = "degree";
        public const string ColDegreeId = "degreeId";
        public const string ColDegreeAbbrv = "degreeAbbrv";
        public const string ColCampusOfferedId = "campusOfferedId";
        public const string ColDegreeName = "degreeName";
        public const string ColLevel = "level";

        public int Id { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
        public DegreeLevelEnum Level { get; set; }
        public CampusEnum CampusOffered { get; set; }

    }
}