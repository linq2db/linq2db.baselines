BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "GlobalTaskDTO"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "GlobalTaskDTO"
(
	"Id"                        uuid NOT NULL,
	"ResourceID"                uuid NOT NULL,
	"StorageShelfSourceID"      uuid     NULL,
	"RPSourceID"                uuid     NULL,
	"StorageShelfDestinationID" uuid     NULL,
	"RPDestinationID"           uuid     NULL,
	"RPOrigDestinationID"       uuid     NULL,
	"OutfeedTransportOrderID"   uuid     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WMS_GlobalTaskA"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "WMS_GlobalTaskA"
(
	"Id"                        uuid NOT NULL,
	"ResourceID"                uuid NOT NULL,
	"StorageShelfSourceID"      uuid     NULL,
	"RPSourceID"                uuid     NULL,
	"StorageShelfDestinationID" uuid     NULL,
	"RPDestinationID"           uuid     NULL,
	"RPOrigDestinationID"       uuid     NULL,
	"OutfeedTransportOrderID"   uuid     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WMS_GlobalTaskA"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "GlobalTaskDTO"

