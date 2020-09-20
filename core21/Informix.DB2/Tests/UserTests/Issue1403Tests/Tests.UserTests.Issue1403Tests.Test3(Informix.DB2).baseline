BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1403Tests_3
(
	event_description NVarChar(255) NOT NULL,
	event_id          Int           NOT NULL,

	PRIMARY KEY (event_id)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Issue1403Tests_3
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t1.event_description,
	t1.event_id
FROM
	Issue1403Tests_3 t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1403Tests_3

