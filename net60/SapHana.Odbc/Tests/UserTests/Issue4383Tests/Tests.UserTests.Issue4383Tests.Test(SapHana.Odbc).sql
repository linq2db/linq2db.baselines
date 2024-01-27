BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PUMPLINES"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PUMPLINES"
(
	"LINE_ID" Integer NOT NULL,

	PRIMARY KEY ("LINE_ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "PUMPLINES"
(
	"LINE_ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "PUMPLINES"
(
	"LINE_ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PUMPLINE_CHAINS"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PUMPLINE_CHAINS"
(
	"LINE_ID"  Integer NOT NULL,
	"CHAIN_ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @LineId  -- Int32
SET     @LineId = 1
DECLARE @ChainId  -- Int32
SET     @ChainId = 11

INSERT INTO "PUMPLINE_CHAINS"
(
	"LINE_ID",
	"CHAIN_ID"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @LineId  -- Int32
SET     @LineId = 2
DECLARE @ChainId  -- Int32
SET     @ChainId = 22

INSERT INTO "PUMPLINE_CHAINS"
(
	"LINE_ID",
	"CHAIN_ID"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CHAINS"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CHAINS"
(
	"CHAIN_ID" Integer NOT NULL,

	PRIMARY KEY ("CHAIN_ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 11

INSERT INTO "CHAINS"
(
	"CHAIN_ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 22

INSERT INTO "CHAINS"
(
	"CHAIN_ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CHAINPOINTS"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CHAINPOINTS"
(
	"CHAIN_ID" Integer NOT NULL,

	PRIMARY KEY ("CHAIN_ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ElementId  -- Int32
SET     @ElementId = 11

INSERT INTO "CHAINPOINTS"
(
	"CHAIN_ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ElementId  -- Int32
SET     @ElementId = 22

INSERT INTO "CHAINPOINTS"
(
	"CHAIN_ID"
)
VALUES
(
	?
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"key_data_result"."CHAIN_ID",
	"key_data_result"."LINE_ID",
	"detail_1"."CHAIN_ID"
FROM
	(
		SELECT DISTINCT
			"a_Chain"."CHAIN_ID",
			"lw_PumpLineTest`2"."LINE_ID"
		FROM
			"PUMPLINES" "lw_PumpLineTest`2"
				INNER JOIN "PUMPLINE_CHAINS" "detail" ON "lw_PumpLineTest`2"."LINE_ID" = "detail"."LINE_ID"
				LEFT JOIN "CHAINS" "a_Chain" ON "detail"."CHAIN_ID" = "a_Chain"."CHAIN_ID"
	) "key_data_result"
		INNER JOIN "CHAINPOINTS" "detail_1" ON "key_data_result"."CHAIN_ID" = "detail_1"."CHAIN_ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"lw_PumpLineTest`2"."LINE_ID",
	"detail"."LINE_ID",
	"detail"."CHAIN_ID",
	"a_Chain"."CHAIN_ID"
FROM
	"PUMPLINES" "lw_PumpLineTest`2"
		INNER JOIN "PUMPLINE_CHAINS" "detail" ON "lw_PumpLineTest`2"."LINE_ID" = "detail"."LINE_ID"
		LEFT JOIN "CHAINS" "a_Chain" ON "detail"."CHAIN_ID" = "a_Chain"."CHAIN_ID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."LINE_ID"
FROM
	"PUMPLINES" "t1"
ORDER BY
	"t1"."LINE_ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CHAINPOINTS"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CHAINS"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PUMPLINE_CHAINS"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PUMPLINES"

