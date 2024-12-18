BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GlobalTaskDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "GlobalTaskDTO"
		(
			"Id"                        Raw(16) NOT NULL,
			"ResourceID"                Raw(16) NOT NULL,
			"StorageShelfSourceID"      Raw(16)     NULL,
			"RPSourceID"                Raw(16)     NULL,
			"StorageShelfDestinationID" Raw(16)     NULL,
			"RPDestinationID"           Raw(16)     NULL,
			"RPOrigDestinationID"       Raw(16)     NULL,
			"OutfeedTransportOrderID"   Raw(16)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WMS_GlobalTaskA"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "WMS_GlobalTaskA"
		(
			"Id"                        Raw(16) NOT NULL,
			"ResourceID"                Raw(16) NOT NULL,
			"StorageShelfSourceID"      Raw(16)     NULL,
			"RPSourceID"                Raw(16)     NULL,
			"StorageShelfDestinationID" Raw(16)     NULL,
			"RPDestinationID"           Raw(16)     NULL,
			"RPOrigDestinationID"       Raw(16)     NULL,
			"OutfeedTransportOrderID"   Raw(16)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WmsResourcePointDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "WmsResourcePointDTO"
		(
			"Id" Raw(16) NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StorageShelfDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "StorageShelfDTO"
		(
			"Id" Raw(16) NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
		LEFT JOIN "WmsResourcePointDTO" source ON t2."RPSourceID" = source."Id" AND t2."RPSourceID" IS NOT NULL
		LEFT JOIN "StorageShelfDTO" sourceShelf ON t2."StorageShelfSourceID" = sourceShelf."Id" AND t2."StorageShelfSourceID" IS NOT NULL
		LEFT JOIN "WmsResourcePointDTO" dest ON t2."RPDestinationID" = dest."Id" AND t2."RPDestinationID" IS NOT NULL
		LEFT JOIN "StorageShelfDTO" destShelf ON t2."StorageShelfDestinationID" = destShelf."Id" AND t2."StorageShelfDestinationID" IS NOT NULL
		LEFT JOIN "WmsResourcePointDTO" origdest ON t2."RPOrigDestinationID" = origdest."Id" AND t2."RPOrigDestinationID" IS NOT NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StorageShelfDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WmsResourcePointDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WMS_GlobalTaskA"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GlobalTaskDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

