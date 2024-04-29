﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Test3799Item"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Test3799Item"
		(
			"Id"       Int           NOT NULL,
			"ParentId" Int               NULL,
			"Name"     NVarChar(255) NOT NULL,

			CONSTRAINT "PK_Test3799Item" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name VarChar(4) -- String
SET     @Name = 'root'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS NVarChar(4))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'child 1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS NVarChar(7))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 1.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS NVarChar(9))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 1.2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS NVarChar(9))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'child 2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS NVarChar(7))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 5
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS NVarChar(9))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 7
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 5
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS NVarChar(9))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"d"."Name"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Test3799Item" "item_1"
				LEFT JOIN (
					SELECT
						"a_Children"."Id",
						ROW_NUMBER() OVER (PARTITION BY "a_Children"."ParentId" ORDER BY "a_Children"."ParentId") as "rn",
						"a_Children"."ParentId"
					FROM
						"Test3799Item" "a_Children"
				) "t1" ON "item_1"."Id" = "t1"."ParentId" AND "t1"."rn" <= 1
	) "m_1"
		INNER JOIN "Test3799Item" "d" ON ("m_1"."Id" = "d"."ParentId" OR "m_1"."Id" IS NULL AND "d"."ParentId" IS NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"item_1"."Name",
	"t1"."Name",
	"t1"."Id"
FROM
	"Test3799Item" "item_1"
		LEFT JOIN (
			SELECT
				"a_Children"."Name",
				"a_Children"."Id",
				ROW_NUMBER() OVER (PARTITION BY "a_Children"."ParentId" ORDER BY "a_Children"."ParentId") as "rn",
				"a_Children"."ParentId"
			FROM
				"Test3799Item" "a_Children"
		) "t1" ON "item_1"."Id" = "t1"."ParentId" AND "t1"."rn" <= 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Test3799Item"';
END

