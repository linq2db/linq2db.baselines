﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Transactions"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Transactions"
(
	"TransactionId"   Integer NOT NULL,
	"TransactionDate" Date    NOT NULL,

	PRIMARY KEY ("TransactionId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-02-29'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2021-02-28'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2019-02-28'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-03-29'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-01-29'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-03-01'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-02-28'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-08-09'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2021-08-09'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2019-08-09'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-09-09'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-07-09'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-08-10'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate  -- DateTime
SET     @TransactionDate = '2020-08-08'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Days("t"."TransactionDate", 3)
FROM
	"Transactions" "t"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Transactions"

