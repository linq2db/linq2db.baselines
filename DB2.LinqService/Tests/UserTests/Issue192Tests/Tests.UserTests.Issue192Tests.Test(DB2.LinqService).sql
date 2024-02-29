BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TypeConvertTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TypeConvertTable"
		(
			"Name"      NVarChar(50) NOT NULL,
			"BoolValue" Char         NOT NULL,
			"GuidValue" VarChar(50)      NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "TypeConvertTable"
(
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO "TypeConvertTable"
(
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = 'N'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = 'Y'

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	Count(*)
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."GuidValue" = @GuidValue

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'N'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'Y'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'N'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'Y'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'N'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'Y'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'N'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'Y'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'N'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'Y'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."BoolValue" = @BoolValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."GuidValue" = @GuidValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	"_"."Name",
	"_"."BoolValue",
	"_"."GuidValue"
FROM
	"TypeConvertTable" "_"
WHERE
	"_"."GuidValue" = @GuidValue
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TypeConvertTable"';
END

