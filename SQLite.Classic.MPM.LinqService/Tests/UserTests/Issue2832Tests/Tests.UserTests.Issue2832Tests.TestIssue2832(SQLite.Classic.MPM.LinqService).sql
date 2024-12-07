(426286) SELECT 
	t426286.Id = t426285.Id
FROM [DctSetpointtype(426285)] as t426285 (spt)
		LEFT JOIN (
			[VWellTree(426288)] as t426288 (t2)
				INNER JOIN [DctOu(426290)] as t426290 (tp2) ON ({t426288.ShopId?}? = {t426290.Id})
				LEFT JOIN [UacUsersDatagroup(426293)] as t426293 (cudg) ON ({t426290.Id} = {t426293.DatagroupId} AND {t426293.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426298)] as t426298 (oudg) ON ({t426290.ParentId?}? = {t426298.DatagroupId} AND {t426298.UserId} = 150 AND {t426298.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426318)] as t426318 (d) ON ({t426288.WellId?}? = {t426318.WellId})
		)  ON ({t426318.SetpointtypeId} = {t426285.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426293.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426298.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
