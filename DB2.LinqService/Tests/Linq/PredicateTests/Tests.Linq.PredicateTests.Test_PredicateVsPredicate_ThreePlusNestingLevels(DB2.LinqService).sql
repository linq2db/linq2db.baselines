﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	(("r"."Value1" <> "r"."Value2") = ("r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL)) = ((("r"."Value4" = "r"."Value5" OR "r"."Value4" IS NULL AND "r"."Value5" IS NULL) AND NOT ("r"."Value4" IS NULL AND "r"."Value5" IS NOT NULL) AND NOT ("r"."Value5" IS NULL AND "r"."Value4" IS NOT NULL)) = ("r"."Value2" <> "r"."Value4" OR "r"."Value4" IS NULL))

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" = "r"."Value2") <> (NOT ("r"."Value4" = "r"."Value1" AND "r"."Value4" IS NOT NULL))

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	(("r"."Value1" = "r"."Value2") = ("r"."Value2" <> "r"."Value4" OR "r"."Value4" IS NULL)) = ("r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	(("r"."Value1" <> "r"."Value2") <> ("r"."Value2" = "r"."Value5" AND "r"."Value5" IS NOT NULL)) <> (("r"."Value4" <> "r"."Value1" OR "r"."Value4" IS NULL) = (("r"."Value4" = "r"."Value5" OR "r"."Value4" IS NULL AND "r"."Value5" IS NULL) AND NOT ("r"."Value4" IS NULL AND "r"."Value5" IS NOT NULL) AND NOT ("r"."Value5" IS NULL AND "r"."Value4" IS NOT NULL)))

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

