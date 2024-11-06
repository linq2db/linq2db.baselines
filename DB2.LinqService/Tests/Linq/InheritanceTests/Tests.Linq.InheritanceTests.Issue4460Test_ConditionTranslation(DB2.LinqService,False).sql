BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Base"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Base"
		(
			"Code"   NVarChar(255)     NULL,
			"Id"     Int           NOT NULL,
			"Name"   NVarChar(255)     NULL,
			"IsMale" smallint          NULL,
			"Age"    Int               NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale SmallInt(4) -- Int16
SET     @IsMale = 0

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"IsMale"
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Integer(4) -- Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "e"."Code" = 'Child2' THEN 1
		ELSE 0
	END,
	"e"."Code",
	"e"."Id",
	"e"."Name",
	"e"."Age",
	CASE
		WHEN "e"."Code" = 'Child' THEN 1
		ELSE 0
	END,
	"e"."IsMale",
	CASE
		WHEN "e"."Code" = 'BaseChild' THEN 1
		ELSE 0
	END
FROM
	"Base" "e"
WHERE
	CASE
		WHEN "e"."Code" = 'BaseChild' OR "e"."Code" = 'Child' OR "e"."Code" = 'Child2'
			THEN CASE
			WHEN "e"."Id" <> 0 THEN 1
			ELSE 0
		END
		WHEN "e"."Id" <> 0 THEN 1
		ELSE 0
	END = 1
ORDER BY
	"e"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Base"';
END

