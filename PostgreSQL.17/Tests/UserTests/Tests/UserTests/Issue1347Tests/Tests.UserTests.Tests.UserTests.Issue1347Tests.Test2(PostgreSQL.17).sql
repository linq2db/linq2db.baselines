-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t5."Id",
	t5."ResourceID",
	t5."StorageShelfSourceID",
	t5."RPSourceID",
	t5."StorageShelfDestinationID",
	t5."RPDestinationID",
	t5."RPOrigDestinationID",
	t5."OutfeedTransportOrderID",
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
	) t5
		LEFT JOIN "WmsResourcePointDTO" source ON t5."RPSourceID" = source."Id"
		LEFT JOIN "StorageShelfDTO" "sourceShelf" ON t5."StorageShelfSourceID" = "sourceShelf"."Id"
		LEFT JOIN "WmsResourcePointDTO" dest ON t5."RPDestinationID" = dest."Id"
		LEFT JOIN "StorageShelfDTO" "destShelf" ON t5."StorageShelfDestinationID" = "destShelf"."Id"
		LEFT JOIN "WmsResourcePointDTO" origdest ON t5."RPOrigDestinationID" = origdest."Id"
		LEFT JOIN (
			SELECT
				res."Id"
			FROM
				"WmsLoadCarrierDTO" res
			UNION
			SELECT
				t3."Id"
			FROM
				"WMS_LoadCarrierA" t3
		) res_1 ON t5."ResourceID" = res_1."Id"
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
		) outfeed ON t5."OutfeedTransportOrderID" = outfeed."Id"

