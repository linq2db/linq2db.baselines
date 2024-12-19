BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS GlobalTaskDTO

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS GlobalTaskDTO
(
	Id                        VARCHAR(36) NOT NULL,
	ResourceID                VARCHAR(36) NOT NULL,
	StorageShelfSourceID      VARCHAR(36)     NULL,
	RPSourceID                VARCHAR(36)     NULL,
	StorageShelfDestinationID VARCHAR(36)     NULL,
	RPDestinationID           VARCHAR(36)     NULL,
	RPOrigDestinationID       VARCHAR(36)     NULL,
	OutfeedTransportOrderID   VARCHAR(36)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS WMS_GlobalTaskA

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS WMS_GlobalTaskA
(
	Id                        VARCHAR(36) NOT NULL,
	ResourceID                VARCHAR(36) NOT NULL,
	StorageShelfSourceID      VARCHAR(36)     NULL,
	RPSourceID                VARCHAR(36)     NULL,
	StorageShelfDestinationID VARCHAR(36)     NULL,
	RPDestinationID           VARCHAR(36)     NULL,
	RPOrigDestinationID       VARCHAR(36)     NULL,
	OutfeedTransportOrderID   VARCHAR(36)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.ResourceID,
	t1.StorageShelfSourceID,
	t1.RPSourceID,
	t1.StorageShelfDestinationID,
	t1.RPDestinationID,
	t1.RPOrigDestinationID,
	t1.OutfeedTransportOrderID
FROM
	GlobalTaskDTO t1
UNION
SELECT
	t2.Id,
	t2.ResourceID,
	t2.StorageShelfSourceID,
	t2.RPSourceID,
	t2.StorageShelfDestinationID,
	t2.RPDestinationID,
	t2.RPOrigDestinationID,
	t2.OutfeedTransportOrderID
FROM
	WMS_GlobalTaskA t2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS WMS_GlobalTaskA

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS GlobalTaskDTO

