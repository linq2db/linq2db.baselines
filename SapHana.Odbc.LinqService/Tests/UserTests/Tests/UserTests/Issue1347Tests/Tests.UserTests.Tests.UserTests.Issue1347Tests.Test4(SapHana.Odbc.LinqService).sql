BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "GlobalTaskDTO"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "GlobalTaskDTO"
(
	"Id"                        Char (36) NOT NULL,
	"ResourceID"                Char (36) NOT NULL,
	"StorageShelfSourceID"      Char (36)     NULL,
	"RPSourceID"                Char (36)     NULL,
	"StorageShelfDestinationID" Char (36)     NULL,
	"RPDestinationID"           Char (36)     NULL,
	"RPOrigDestinationID"       Char (36)     NULL,
	"OutfeedTransportOrderID"   Char (36)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "WMS_GlobalTaskA"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "WMS_GlobalTaskA"
(
	"Id"                        Char (36) NOT NULL,
	"ResourceID"                Char (36) NOT NULL,
	"StorageShelfSourceID"      Char (36)     NULL,
	"RPSourceID"                Char (36)     NULL,
	"StorageShelfDestinationID" Char (36)     NULL,
	"RPDestinationID"           Char (36)     NULL,
	"RPOrigDestinationID"       Char (36)     NULL,
	"OutfeedTransportOrderID"   Char (36)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."ResourceID",
	"t1"."StorageShelfSourceID",
	"t1"."RPSourceID",
	"t1"."StorageShelfDestinationID",
	"t1"."RPDestinationID",
	"t1"."RPOrigDestinationID",
	"t1"."OutfeedTransportOrderID"
FROM
	"GlobalTaskDTO" "t1"
UNION
SELECT
	"t2"."Id",
	"t2"."ResourceID",
	"t2"."StorageShelfSourceID",
	"t2"."RPSourceID",
	"t2"."StorageShelfDestinationID",
	"t2"."RPDestinationID",
	"t2"."RPOrigDestinationID",
	"t2"."OutfeedTransportOrderID"
FROM
	"WMS_GlobalTaskA" "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "WMS_GlobalTaskA"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "GlobalTaskDTO"

