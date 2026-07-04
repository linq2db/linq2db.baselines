-- ClickHouse.Driver ClickHouse

SELECT
	gt1.RPSourceID
FROM
	GlobalTaskDTO gt1
WHERE
	gt1.RPSourceID IN (toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'), toUUID('a948600d-de21-4f74-8ac2-9516b287076e'))
UNION DISTINCT
SELECT
	gt2.RPDestinationID as RPSourceID
FROM
	GlobalTaskDTO gt2

