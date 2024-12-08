(504184) SELECT 
	t504184.Id = t504183.Id
FROM [DctSetpointtype(504183)] as t504183 (spt)
		LEFT JOIN (
			[VWellTree(504186)] as t504186 (t2)
				INNER JOIN [DctOu(504188)] as t504188 (tp2) ON ({t504186.ShopId?}? = {t504188.Id})
				LEFT JOIN [UacUsersDatagroup(504191)] as t504191 (cudg) ON ({t504188.Id} = {t504191.DatagroupId} AND {t504191.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(504196)] as t504196 (oudg) ON ({t504188.ParentId?}? = {t504196.DatagroupId} AND {t504196.UserId} = 150 AND {t504196.Inheritablepermission} > 0)
				INNER JOIN [Deviation(504216)] as t504216 (d) ON ({t504186.WellId?}? = {t504216.WellId})
		)  ON ({t504216.SetpointtypeId} = {t504183.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t504191.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t504196.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
