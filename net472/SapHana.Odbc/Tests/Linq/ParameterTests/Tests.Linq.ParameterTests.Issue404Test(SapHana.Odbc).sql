BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table404One"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table404Two"
(
	"Id"           Integer NOT NULL,
	"Usage"        Integer NOT NULL,
	"FirstTableId" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"key_data_result"."Id",
	"_v"."Id",
	"_v"."Usage",
	"_v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT
					"c_1"."Id"
				FROM
					"Table404One" "c_1"
				LIMIT ?
			) "t1"
	) "key_data_result"
		INNER JOIN "Table404Two" "_v" ON "_v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @Usage_2  -- Int32
SET     @Usage_2 = 0

SELECT
	"key_data_result"."Id",
	"_v"."Id",
	"_v"."Usage",
	"_v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT
					"c_1"."Id"
				FROM
					"Table404One" "c_1"
				LIMIT ?
			) "t1"
	) "key_data_result"
		INNER JOIN "Table404Two" "_v" ON "_v"."Usage" = ? AND "_v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @Usage_2  -- Int32
SET     @Usage_2 = 1

SELECT
	"key_data_result"."Id",
	"_v"."Id",
	"_v"."Usage",
	"_v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT
					"c_1"."Id"
				FROM
					"Table404One" "c_1"
				LIMIT ?
			) "t1"
	) "key_data_result"
		INNER JOIN "Table404Two" "_v" ON "_v"."Usage" = ? AND "_v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404Two"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404One"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table404One"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table404Two"
(
	"Id"           Integer NOT NULL,
	"Usage"        Integer NOT NULL,
	"FirstTableId" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
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
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"key_data_result"."Id",
	"_v"."Id",
	"_v"."Usage",
	"_v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT
					"c_1"."Id"
				FROM
					"Table404One" "c_1"
				LIMIT ?
			) "t1"
	) "key_data_result"
		INNER JOIN "Table404Two" "_v" ON "_v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @Usage_2  -- Int32
SET     @Usage_2 = 0

SELECT
	"key_data_result"."Id",
	"_v"."Id",
	"_v"."Usage",
	"_v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT
					"c_1"."Id"
				FROM
					"Table404One" "c_1"
				LIMIT ?
			) "t1"
	) "key_data_result"
		INNER JOIN "Table404Two" "_v" ON "_v"."Usage" = ? AND "_v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @Usage_2  -- Int32
SET     @Usage_2 = 1

SELECT
	"key_data_result"."Id",
	"_v"."Id",
	"_v"."Usage",
	"_v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT
					"c_1"."Id"
				FROM
					"Table404One" "c_1"
				LIMIT ?
			) "t1"
	) "key_data_result"
		INNER JOIN "Table404Two" "_v" ON "_v"."Usage" = ? AND "_v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404Two"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404One"

