-- YDB Ydb
DECLARE $Name Text(6) -- String
SET     $Name = 'group1'u
DECLARE $Enabled Bool -- Boolean
SET     $Enabled = true
DECLARE $ImageFullUrl Text(3) -- String
SET     $ImageFullUrl = '123'u

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	$Name,
	$Enabled,
	$ImageFullUrl
)

-- YDB Ydb
DECLARE $Name Text(6) -- String
SET     $Name = 'group1'u
DECLARE $Enabled Bool -- Boolean
SET     $Enabled = true
DECLARE $ImageFullUrl Text(3) -- String
SET     $ImageFullUrl = '123'u

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	$Name,
	$Enabled,
	$ImageFullUrl
)

-- YDB Ydb
DECLARE $Name Text(6) -- String
SET     $Name = 'group2'u
DECLARE $Enabled Bool -- Boolean
SET     $Enabled = true
DECLARE $ImageFullUrl Text(3) -- String
SET     $ImageFullUrl = '123'u

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	$Name,
	$Enabled,
	$ImageFullUrl
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.Enabled as Enabled,
	t1.ImageFullUrl as ImageFullUrl
FROM
	(
		SELECT DISTINCT
			sG.Name as Key_1
		FROM
			Stone sG
		WHERE
			sG.Enabled = true AND sG.Name NOT LIKE 'level - %'u ESCAPE '~'s AND
			CAST(Unicode::GetLength(sG.ImageFullUrl) AS Int32) > 0
	) sG_1
		INNER JOIN (
			SELECT
				s.Id as Id,
				s.Name as Name,
				s.Enabled as Enabled,
				s.ImageFullUrl as ImageFullUrl,
				ROW_NUMBER() OVER (PARTITION BY s.Name ORDER BY s.Name) as rn
			FROM
				Stone s
			WHERE
				s.Enabled = true AND s.Name NOT LIKE 'level - %'u ESCAPE '~'s AND
				CAST(Unicode::GetLength(s.ImageFullUrl) AS Int32) > 0
		) t1 ON sG_1.Key_1 = t1.Name
WHERE
	t1.rn = 1

