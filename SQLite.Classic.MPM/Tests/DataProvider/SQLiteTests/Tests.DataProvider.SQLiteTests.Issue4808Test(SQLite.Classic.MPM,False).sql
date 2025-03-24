﻿BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Issue4808Table] [r]
WHERE
	CASE
		WHEN [r].[ValueText] IS NOT NULL THEN [r].[ValueText]
		ELSE '00000000-0000-0000-0000-000000000000'
	END IN ('BC7B663D-0FDE-4327-8F92-5D8CC3A11D11')

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Issue4808Table] [r]
WHERE
	CASE
		WHEN [r].[ValueBinary] IS NOT NULL THEN [r].[ValueBinary]
		ELSE X'00000000000000000000000000000000'
	END IN (X'0D6048A921DE744F8AC29516B287076E')

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Issue4808Table] [r]
WHERE
	[r].[ValueText] IS NOT NULL AND [r].[ValueText] IN ('BC7B663D-0FDE-4327-8F92-5D8CC3A11D11')

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Issue4808Table] [r]
WHERE
	[r].[ValueBinary] IS NOT NULL AND [r].[ValueBinary] IN (X'0D6048A921DE744F8AC29516B287076E')

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Issue4808Table] [r]
WHERE
	CASE
		WHEN [r].[ValueText] IS NOT NULL THEN [r].[ValueText]
		ELSE '00000000-0000-0000-0000-000000000000'
	END IN ('BC7B663D-0FDE-4327-8F92-5D8CC3A11D11')

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Issue4808Table] [r]
WHERE
	CASE
		WHEN [r].[ValueBinary] IS NOT NULL THEN [r].[ValueBinary]
		ELSE X'00000000000000000000000000000000'
	END IN (X'0D6048A921DE744F8AC29516B287076E')

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Issue4808Table] [r]
WHERE
	[r].[ValueText] IS NOT NULL AND [r].[ValueText] IN ('BC7B663D-0FDE-4327-8F92-5D8CC3A11D11')

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Issue4808Table] [r]
WHERE
	[r].[ValueBinary] IS NOT NULL AND [r].[ValueBinary] IN (X'0D6048A921DE744F8AC29516B287076E')

