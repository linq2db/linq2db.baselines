BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Fact"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Fact"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5

INSERT INTO "Fact"
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
	EXECUTE IMMEDIATE 'DROP TABLE "Tag"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Tag"
		(
			"Id"     Int           NOT NULL,
			"FactId" Int           NOT NULL,
			"Name"   NVarChar(255) NOT NULL,

			CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @FactId Integer(4) -- Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @FactId Integer(4) -- Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @FactId Integer(4) -- Int32
SET     @FactId = 4
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag4'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"fact_1"."Id",
	"t1"."Id",
	"t1"."FactId",
	"t1"."Name"
FROM
	"Tag" "t1"
		RIGHT JOIN "Fact" "fact_1" ON "t1"."FactId" = "fact_1"."Id"
WHERE
	"fact_1"."Id" > 3

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Tag"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Fact"';
END

