BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue3360NullInAnchor"
(
	"Id"    Int         NOT NULL,
	"Enum1" VarChar(50)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH "cte" ("Id", "Enum1")
AS
(
	SELECT
		"p"."Id",
		Cast(NULL as NVarChar(255))
	FROM
		"Issue3360NullInAnchor" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		"t1"."Enum1"
	FROM
		(
			SELECT
				"p_1"."Id",
				'THIS_IS_ONE' as "Enum1"
			FROM
				"cte" "p_1",
				"Issue3360NullInAnchor" "r"
			WHERE
				"p_1"."Id" = "r"."Id" + 100
		) "t1"
)
SELECT
	"t2"."Id",
	"t2"."Enum1"
FROM
	"cte" "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360NullInAnchor"';
END

