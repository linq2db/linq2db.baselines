BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t2."Id",
	t2."ResourceID",
	t2."StorageShelfSourceID",
	t2."RPSourceID",
	t2."StorageShelfDestinationID",
	t2."RPDestinationID",
	t2."RPOrigDestinationID",
	t2."OutfeedTransportOrderID",
	source."Id",
	sourceShelf."Id",
	dest."Id",
	destShelf."Id",
	origdest."Id"
FROM
	(
		SELECT
			g_1."Id",
			g_1."ResourceID",
			g_1."StorageShelfSourceID",
			g_1."RPSourceID",
			g_1."StorageShelfDestinationID",
			g_1."RPDestinationID",
			g_1."RPOrigDestinationID",
			g_1."OutfeedTransportOrderID"
		FROM
			"GlobalTaskDTO" g_1
		UNION
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
			"WMS_GlobalTaskA" t1
	) t2
		LEFT JOIN "WmsResourcePointDTO" source ON t2."RPSourceID" = source."Id"
		LEFT JOIN "StorageShelfDTO" sourceShelf ON t2."StorageShelfSourceID" = sourceShelf."Id"
		LEFT JOIN "WmsResourcePointDTO" dest ON t2."RPDestinationID" = dest."Id"
		LEFT JOIN "StorageShelfDTO" destShelf ON t2."StorageShelfDestinationID" = destShelf."Id"
		LEFT JOIN "WmsResourcePointDTO" origdest ON t2."RPOrigDestinationID" = origdest."Id"

