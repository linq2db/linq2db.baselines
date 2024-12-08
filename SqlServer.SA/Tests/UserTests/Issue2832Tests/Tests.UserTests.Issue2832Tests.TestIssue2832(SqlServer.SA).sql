(503985) SELECT 
	t503985.Id = t503984.Id
FROM [DctSetpointtype(503984)] as t503984 (spt)
		LEFT JOIN (
			[VWellTree(503987)] as t503987 (t2)
				INNER JOIN [DctOu(503989)] as t503989 (tp2) ON ({t503987.ShopId?}? = {t503989.Id})
				LEFT JOIN [UacUsersDatagroup(503992)] as t503992 (cudg) ON ({t503989.Id} = {t503992.DatagroupId} AND {t503992.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(503997)] as t503997 (oudg) ON ({t503989.ParentId?}? = {t503997.DatagroupId} AND {t503997.UserId} = 150 AND {t503997.Inheritablepermission} > 0)
				INNER JOIN [Deviation(504017)] as t504017 (d) ON ({t503987.WellId?}? = {t504017.WellId})
		)  ON ({t504017.SetpointtypeId} = {t503984.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t503992.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t503997.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
