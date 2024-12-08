(492286) SELECT 
	t492286.Id = t492285.Id
FROM [DctSetpointtype(492285)] as t492285 (spt)
		LEFT JOIN (
			[VWellTree(492288)] as t492288 (t2)
				INNER JOIN [DctOu(492290)] as t492290 (tp2) ON ({t492288.ShopId?}? = {t492290.Id})
				LEFT JOIN [UacUsersDatagroup(492293)] as t492293 (cudg) ON ({t492290.Id} = {t492293.DatagroupId} AND {t492293.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(492298)] as t492298 (oudg) ON ({t492290.ParentId?}? = {t492298.DatagroupId} AND {t492298.UserId} = 150 AND {t492298.Inheritablepermission} > 0)
				INNER JOIN [Deviation(492318)] as t492318 (d) ON ({t492288.WellId?}? = {t492318.WellId})
		)  ON ({t492318.SetpointtypeId} = {t492285.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t492293.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t492298.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
