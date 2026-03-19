-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t4."Id",
	t4."ResourceID",
	t4."StorageShelfSourceID",
	t4."RPSourceID",
	t4."StorageShelfDestinationID",
	t4."RPDestinationID",
	t4."RPOrigDestinationID",
	t4."OutfeedTransportOrderID",
	res_1."Id"
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
	) t4
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
		) res_1 ON t4."ResourceID" = res_1."Id"

