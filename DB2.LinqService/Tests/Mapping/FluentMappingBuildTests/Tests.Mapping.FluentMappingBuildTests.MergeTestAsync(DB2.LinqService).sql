BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp"
		(
			ID     Int          NOT NULL,
			"Name" NVarChar(20)     NULL,

			CONSTRAINT "PK_FluentTemp" PRIMARY KEY (ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "FluentTemp"
(
	ID,
	"Name"
)
VALUES
(
	@ID,
	@Name
)

