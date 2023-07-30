﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1403Tests_2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1403Tests_2
(
	event_id          Int           NOT NULL,
	event_description NVarChar(255) NOT NULL,

	PRIMARY KEY (event_id)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Issue1403Tests_2
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
	t1.event_id,
	t1.event_description
FROM
	Issue1403Tests_2 t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1403Tests_2

