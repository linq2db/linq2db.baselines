-- Informix.DB2 Informix
INSERT INTO OrderedColumnsDerivedRecord
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'
)

-- Informix.DB2 Informix
SELECT FIRST 1
	t1.event_id,
	t1.event_description
FROM
	OrderedColumnsDerivedRecord t1

