﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1977Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue1977Table
(
	firstField  UUID,
	secondField UUID
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue1977Table
(
	firstField,
	secondField
)
VALUES
(toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toUUID('a948600d-de21-4f74-8ac2-9516b287076e'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN concat('Issue1977Table/', toString(f.firstField), '/', toString(f.secondField)) = arrayStringConcat(['Issue1977Table', toString(f.firstField), toString(f.secondField)], '/')
			THEN true
		ELSE false
	END
FROM
	Issue1977Table f

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1977Table

