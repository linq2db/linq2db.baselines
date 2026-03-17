-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN [u].[UserNumber] >= 0 AND Length(CAST([u].[UserNumber] AS NVarChar(11))) < Length(CAST(Coalesce(CAST([a_Settings].[SettingValue] AS INTEGER), 9000) AS NVarChar(11)))
			THEN CASE
			WHEN Length(CAST([u].[UserNumber] AS NVarChar(11))) >= Length(CAST(Coalesce(CAST([a_Settings].[SettingValue] AS INTEGER), 9000) AS NVarChar(11)))
				THEN CAST([u].[UserNumber] AS NVarChar(11))
			ELSE SUBSTR(REPLACE(HEX(ZEROBLOB(Length(CAST(Coalesce(CAST([a_Settings].[SettingValue] AS INTEGER), 9000) AS NVarChar(11))))), '0', '0'), 1, Length(CAST(Coalesce(CAST([a_Settings].[SettingValue] AS INTEGER), 9000) AS NVarChar(11))) - Length(CAST([u].[UserNumber] AS NVarChar(11)))) || CAST([u].[UserNumber] AS NVarChar(11))
		END
		ELSE CAST([u].[UserNumber] AS NVarChar(11))
	END
FROM
	[User] [u]
		LEFT JOIN [Hospital] [a_Hospital] ON [u].[HospitalId] = [a_Hospital].[Id]
		LEFT JOIN [HospitalSetting] [a_Settings] ON [a_Hospital].[Id] = [a_Settings].[HospitalId] AND [a_Settings].[SettingId] = 'UserNumberMaxValue'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT NULL [item] WHERE 1 = 0
				UNION ALL
				VALUES
					('001'), ('002'), ('003'), ('9001'), ('9002'), ('9003')
				) [l]
		WHERE
			[l].[item] = CASE
				WHEN [u].[UserNumber] >= 0 AND Length(CAST([u].[UserNumber] AS NVarChar(11))) < Length(CAST(Coalesce(CAST([a_Settings].[SettingValue] AS INTEGER), 9000) AS NVarChar(11)))
					THEN CASE
					WHEN Length(CAST([u].[UserNumber] AS NVarChar(11))) >= Length(CAST(Coalesce(CAST([a_Settings].[SettingValue] AS INTEGER), 9000) AS NVarChar(11)))
						THEN CAST([u].[UserNumber] AS NVarChar(11))
					ELSE SUBSTR(REPLACE(HEX(ZEROBLOB(Length(CAST(Coalesce(CAST([a_Settings].[SettingValue] AS INTEGER), 9000) AS NVarChar(11))))), '0', '0'), 1, Length(CAST(Coalesce(CAST([a_Settings].[SettingValue] AS INTEGER), 9000) AS NVarChar(11))) - Length(CAST([u].[UserNumber] AS NVarChar(11)))) || CAST([u].[UserNumber] AS NVarChar(11))
				END
				ELSE CAST([u].[UserNumber] AS NVarChar(11))
			END
	)

