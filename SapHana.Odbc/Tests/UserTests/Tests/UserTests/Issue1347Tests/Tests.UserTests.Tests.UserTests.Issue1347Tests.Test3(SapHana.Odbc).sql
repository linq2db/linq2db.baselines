-- SapHana.Odbc SapHanaOdbc

SELECT
	"t3"."Id",
	"t3"."ResourceID",
	"t3"."StorageShelfSourceID",
	"t3"."RPSourceID",
	"t3"."StorageShelfDestinationID",
	"t3"."RPDestinationID",
	"t3"."RPOrigDestinationID",
	"t3"."OutfeedTransportOrderID",
	"source"."Id",
	"sourceShelf"."Id",
	"dest"."Id",
	"destShelf"."Id",
	"origdest"."Id"
FROM
	(
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
	) "t3"
		LEFT JOIN "WmsResourcePointDTO" "source" ON "t3"."RPSourceID" = "source"."Id"
		LEFT JOIN "StorageShelfDTO" "sourceShelf" ON "t3"."StorageShelfSourceID" = "sourceShelf"."Id"
		LEFT JOIN "WmsResourcePointDTO" "dest" ON "t3"."RPDestinationID" = "dest"."Id"
		LEFT JOIN "StorageShelfDTO" "destShelf" ON "t3"."StorageShelfDestinationID" = "destShelf"."Id"
		LEFT JOIN "WmsResourcePointDTO" "origdest" ON "t3"."RPOrigDestinationID" = "origdest"."Id"

