﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "FluentTemp"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp"
(
	"ID"   Integer      NOT NULL,
	"Name" NVarChar(20)     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "FluentTemp"
(
	"ID",
	"Name"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

MERGE INTO "FluentTemp" "Target"
USING (
	SELECT 1 AS "source_ID", 'John II' AS "source_Name" FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."source_Name"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Name"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Name"
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "FluentTemp"

