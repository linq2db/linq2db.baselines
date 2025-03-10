BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN LENGTH('test') < 0 THEN SUBSTR(REPLACE(HEX(ZEROBLOB(0)), '0', '.'), 1, 0 - LENGTH('test')) || 'test'
		ELSE 'test'
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN LENGTH('test') < 3 THEN SUBSTR(REPLACE(HEX(ZEROBLOB(3)), '0', '.'), 1, 3 - LENGTH('test')) || 'test'
		ELSE 'test'
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN LENGTH('test') < 4 THEN SUBSTR(REPLACE(HEX(ZEROBLOB(4)), '0', '.'), 1, 4 - LENGTH('test')) || 'test'
		ELSE 'test'
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN LENGTH('test') < 5 THEN SUBSTR(REPLACE(HEX(ZEROBLOB(5)), '0', '.'), 1, 5 - LENGTH('test')) || 'test'
		ELSE 'test'
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN LENGTH('test') < 6 THEN SUBSTR(REPLACE(HEX(ZEROBLOB(6)), '0', ' '), 1, 6 - LENGTH('test')) || 'test'
		ELSE 'test'
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN LENGTH('test') < 6 THEN SUBSTR(REPLACE(HEX(ZEROBLOB(6)), '0', ' '), 1, 6 - LENGTH('test')) || 'test'
		ELSE 'test'
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN LENGTH('test') < 16 THEN SUBSTR(REPLACE(HEX(ZEROBLOB(16)), '0', '.'), 1, 16 - LENGTH('test')) || 'test'
		ELSE 'test'
	END

