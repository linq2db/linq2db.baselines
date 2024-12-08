BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GlobalTaskDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WMS_GlobalTaskA"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

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

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WMS_GlobalTaskA"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GlobalTaskDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

