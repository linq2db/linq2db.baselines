BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1403Tests_2
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

DROP TABLE Issue1403Tests_2

