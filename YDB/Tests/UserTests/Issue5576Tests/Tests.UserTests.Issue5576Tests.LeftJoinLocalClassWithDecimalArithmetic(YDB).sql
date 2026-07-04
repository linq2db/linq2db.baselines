-- YDB Ydb
DECLARE $Guid Uuid -- Guid
SET     $Guid = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $Sold Int32
SET     $Sold = 100

INSERT INTO Campaign
(
	Guid,
	Sold
)
VALUES
(
	$Guid,
	$Sold
)

-- YDB Ydb
DECLARE $Guid Uuid -- Guid
SET     $Guid = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')
DECLARE $Sold Int32
SET     $Sold = 40

INSERT INTO Campaign
(
	Guid,
	Sold
)
VALUES
(
	$Guid,
	$Sold
)

-- YDB Ydb
DECLARE $Guid Uuid -- Guid
SET     $Guid = Uuid('bd3973a5-4323-4dd8-9f4f-df9f93e2a627')
DECLARE $Sold Int32
SET     $Sold = 200

INSERT INTO Campaign
(
	Guid,
	Sold
)
VALUES
(
	$Guid,
	$Sold
)

-- YDB Ydb

SELECT
	r.Guid as Guid,
	lc.`Count` as Count_1,
	CASE
		WHEN lc.`Count` IS NOT NULL THEN (CAST(lc.`Count` AS Decimal(22,9)) / r.Sold) * Decimal('100', 22, 9)
		ELSE NULL
	END as Rate
FROM
	Campaign r
		LEFT JOIN (VALUES
			(Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),5),
			(Uuid('a948600d-de21-4f74-8ac2-9516b287076e'),10)
		) lc(`Key`, `Count`) ON r.Guid = lc.`Key`

