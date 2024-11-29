BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Car"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2933Car"
		(
			"PersonId" Int     NULL,
			"Id"       Int NOT NULL,

			CONSTRAINT "PK_Issue2933Car" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "Issue2933Car"
(
	"PersonId",
	"Id"
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonId Integer -- Int32
SET     @PersonId = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "Issue2933Car"
(
	"PersonId",
	"Id"
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Person"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2933Person"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Issue2933Person" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "Issue2933Person"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Pet"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2933Pet"
		(
			"Name"     NVarChar(255) NOT NULL,
			"Id"       Int           NOT NULL,
			"PersonId" Int           NOT NULL,

			CONSTRAINT "PK_Issue2933Pet" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Snuffles'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 1

INSERT INTO "Issue2933Pet"
(
	"Name",
	"Id",
	"PersonId"
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Buddy'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 1

INSERT INTO "Issue2933Pet"
(
	"Name",
	"Id",
	"PersonId"
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	(
		SELECT
			"a_PetIds"."Name"
		FROM
			"Issue2933Pet" "a_PetIds"
		WHERE
			"a_Person"."Id" = "a_PetIds"."PersonId"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Issue2933Car" "x"
		LEFT JOIN "Issue2933Person" "a_Person" ON "x"."PersonId" = "a_Person"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Pet"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Person"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Car"';
END

