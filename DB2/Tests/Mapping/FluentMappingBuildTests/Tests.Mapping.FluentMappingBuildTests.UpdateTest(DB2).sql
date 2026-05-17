-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp_Update"
		(
			ID         Int          NOT NULL,
			"Value"    NVarChar(20)     NULL,
			"LastName" NVarChar(20)     NULL,

			CONSTRAINT "PK_FluentTemp_Update" PRIMARY KEY (ID)
		)
	';
END

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Update"
(
	ID,
	"Value",
	"LastName"
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	"FluentTemp_Update" "t"
SET
	"Value" = CAST(@Name AS NVarChar(7)),
	"LastName" = CAST(@LastName AS NVarChar(4))
WHERE
	"t".ID = 1

-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Update"';
END

