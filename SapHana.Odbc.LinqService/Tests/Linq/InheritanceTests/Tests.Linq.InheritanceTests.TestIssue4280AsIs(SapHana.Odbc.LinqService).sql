BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4280"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4280"
(
	"Id"           Integer       NOT NULL,
	"SerialNumber" NVarChar(255)     NULL,
	"DeviceType"   NVarChar(255)     NULL,
	"Location"     NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @SerialNumber NVarChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType NVarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location NVarChar(9) -- String
SET     @Location = 'Something'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType",
	"Location"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @SerialNumber NVarChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType NVarChar(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType"
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
	CASE
		WHEN "t1"."DeviceType" = 'TV' THEN 1
		ELSE 0
	END,
	"t1"."Id",
	"t1"."SerialNumber",
	"t1"."DeviceType",
	"t1"."Location",
	CASE
		WHEN "t1"."DeviceType" = 'DISPLAY' THEN 1
		ELSE 0
	END,
	"t1"."DeviceType"
FROM
	"Issue4280" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @SerialNumber NVarChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType NVarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location NVarChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	"Issue4280" "t1"
SET
	"SerialNumber" = ?,
	"DeviceType" = ?,
	"Location" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @SerialNumber NVarChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType NVarChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"Issue4280" "t1"
SET
	"SerialNumber" = ?,
	"DeviceType" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN "t1"."DeviceType" = 'TV' THEN 1
		ELSE 0
	END,
	"t1"."Id",
	"t1"."SerialNumber",
	"t1"."DeviceType",
	"t1"."Location",
	CASE
		WHEN "t1"."DeviceType" = 'DISPLAY' THEN 1
		ELSE 0
	END,
	"t1"."DeviceType"
FROM
	"Issue4280" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4280"

