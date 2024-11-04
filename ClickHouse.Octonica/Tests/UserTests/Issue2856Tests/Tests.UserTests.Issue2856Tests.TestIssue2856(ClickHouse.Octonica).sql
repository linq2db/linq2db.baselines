﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS GlobalTaskDTO

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS GlobalTaskDTO
(
	Id              UUID,
	RPSourceID      Nullable(UUID),
	RPDestinationID Nullable(UUID),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	gt1.RPSourceID as Value_1
FROM
	GlobalTaskDTO gt1
WHERE
	gt1.RPSourceID IN (toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'), toUUID('a948600d-de21-4f74-8ac2-9516b287076e'))
UNION DISTINCT
SELECT
	gt2.RPDestinationID as Value_1
FROM
	GlobalTaskDTO gt2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS GlobalTaskDTO

