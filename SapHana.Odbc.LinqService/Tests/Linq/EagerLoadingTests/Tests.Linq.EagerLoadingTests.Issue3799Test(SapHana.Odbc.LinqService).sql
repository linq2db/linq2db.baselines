﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test3799Item"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Test3799Item"
(
	"Id"       Integer       NOT NULL,
	"ParentId" Integer           NULL,
	"Name"     NVarChar(255) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ParentId  -- Int32
SET     @ParentId = NULL
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'root'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @ParentId  -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'child 1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @ParentId  -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 1.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @ParentId  -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 1.2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @ParentId  -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'child 2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @ParentId  -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @ParentId  -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
-- SapHana.Odbc SapHanaOdbc

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
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test3799Item"

