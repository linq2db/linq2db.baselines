BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp"
		(
			ID         Int          NOT NULL,
			"Value"    NVarChar(20)     NULL,
			"LastName" NVarChar(20)     NULL,

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
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID,
	"t"."Value",
	"t"."LastName"
FROM
	"FluentTemp" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp"
		(
			ID         Int          NOT NULL,
			"Value"    NVarChar(20)     NULL,
			"LastName" NVarChar(20)     NULL,

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
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID,
	"t"."Value",
	"t"."LastName"
FROM
	"FluentTemp" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp"
		(
			ID         Int          NOT NULL,
			"Column"   NVarChar(20)     NULL,
			"LastName" NVarChar(20)     NULL,

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
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	ID,
	"Column",
	"LastName"
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID,
	"t"."Column",
	"t"."LastName"
FROM
	"FluentTemp" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp"
		(
			ID         Int          NOT NULL,
			"Column"   NVarChar(20)     NULL,
			"LastName" NVarChar(20)     NULL,

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
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	ID,
	"Column",
	"LastName"
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID,
	"t"."Column",
	"t"."LastName"
FROM
	"FluentTemp" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp"';
END

