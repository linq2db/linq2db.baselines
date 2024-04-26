﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InventoryResourceDTO
(
	Id                UUID,
	Status            Int32,
	ResourceID        UUID,
	ModifiedTimeStamp Nullable(DateTime64(7))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WmsLoadCarrierDTO
(
	Id            UUID,
	ResourceLabel Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO WmsLoadCarrierDTO
(
	Id,
	ResourceLabel
)
VALUES
(
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	'b'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InventoryResourceDTO
(
	Id,
	Status,
	ResourceID,
	ModifiedTimeStamp
)
VALUES
(
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),
	40,
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toDateTime64('2020-02-29 15:54:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InventoryResourceDTO
(
	Id,
	Status,
	ResourceID,
	ModifiedTimeStamp
)
VALUES
(
	toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),
	40,
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toDateTime64('2020-02-29 15:54:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Status,
	m_1.ResourceLabel,
	t2.Id,
	t2.Status,
	t2.ResourceID,
	t2.ModifiedTimeStamp
FROM
	(
		SELECT DISTINCT
			t1.Status as Status,
			t1.ResourceLabel as ResourceLabel
		FROM
			(
				SELECT
					grp.Status as Status,
					lc.ResourceLabel as ResourceLabel
				FROM
					InventoryResourceDTO grp
						INNER JOIN WmsLoadCarrierDTO lc ON grp.ResourceID = lc.Id
				GROUP BY
					grp.Status,
					lc.ResourceLabel
				HAVING
					COUNT(*) > 1
			) t1
	) m_1
		INNER JOIN (
			SELECT
				d.Status as Status,
				lc_1.ResourceLabel as ResourceLabel,
				d.Id as Id,
				d.ResourceID as ResourceID,
				d.ModifiedTimeStamp as ModifiedTimeStamp
			FROM
				InventoryResourceDTO d
					INNER JOIN WmsLoadCarrierDTO lc_1 ON d.ResourceID = lc_1.Id
		) t2 ON m_1.Status = t2.Status AND m_1.ResourceLabel = t2.ResourceLabel

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	grp.Status,
	lc.ResourceLabel
FROM
	InventoryResourceDTO grp
		INNER JOIN WmsLoadCarrierDTO lc ON grp.ResourceID = lc.Id
GROUP BY
	grp.Status,
	lc.ResourceLabel
HAVING
	COUNT(*) > 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

