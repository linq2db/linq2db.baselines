-- PostgreSQL.13 PostgreSQL

SELECT
	tp12."Id",
	tp12."ResourceID",
	tp12."StorageShelfSourceID",
	tp12."RPSourceID",
	tp12."StorageShelfDestinationID",
	tp12."RPDestinationID",
	tp12."RPOrigDestinationID",
	tp12."OutfeedTransportOrderID",
	res_1."Id",
	source."Id",
	"sourceShelf"."Id",
	dest."Id",
	"destShelf"."Id",
	origdest."Id",
	outfeed."Id"
FROM
	(
		SELECT
			t1."Id",
			t1."ResourceID",
			t1."StorageShelfSourceID",
			t1."RPSourceID",
			t1."StorageShelfDestinationID",
			t1."RPDestinationID",
			t1."RPOrigDestinationID",
			t1."OutfeedTransportOrderID"
		FROM
			"GlobalTaskDTO" t1
		UNION
		SELECT
			t2."Id",
			t2."ResourceID",
			t2."StorageShelfSourceID",
			t2."RPSourceID",
			t2."StorageShelfDestinationID",
			t2."RPDestinationID",
			t2."RPOrigDestinationID",
			t2."OutfeedTransportOrderID"
		FROM
			"WMS_GlobalTaskA" t2
	) tp12
		LEFT JOIN "WmsResourcePointDTO" source ON tp12."RPSourceID" = source."Id"
		LEFT JOIN "StorageShelfDTO" "sourceShelf" ON tp12."StorageShelfSourceID" = "sourceShelf"."Id"
		LEFT JOIN "WmsResourcePointDTO" dest ON tp12."RPDestinationID" = dest."Id"
		LEFT JOIN "StorageShelfDTO" "destShelf" ON tp12."StorageShelfDestinationID" = "destShelf"."Id"
		LEFT JOIN "WmsResourcePointDTO" origdest ON tp12."RPOrigDestinationID" = origdest."Id"
		LEFT JOIN (
			SELECT
				res."Id"
			FROM
				"WmsLoadCarrierDTO" res
			UNION
			SELECT
				t3."Id"
			FROM
				"WMS_ResourceA" t3
		) res_1 ON tp12."ResourceID" = res_1."Id"
		LEFT JOIN (
			SELECT
				outfeed1."Id"
			FROM
				"OutfeedTransportOrderDTO" outfeed1
			UNION
			SELECT
				t4."Id"
			FROM
				"WMS_OutfeedTransportOrderA" t4
		) outfeed ON tp12."OutfeedTransportOrderID" = outfeed."Id"

