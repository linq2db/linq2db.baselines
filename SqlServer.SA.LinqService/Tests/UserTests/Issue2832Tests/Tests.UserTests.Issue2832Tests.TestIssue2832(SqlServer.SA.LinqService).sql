(504141) SELECT 
	t504141.Id = t504140.Id
FROM [DctSetpointtype(504140)] as t504140 (spt)
		LEFT JOIN (
			[VWellTree(504143)] as t504143 (t2)
				INNER JOIN [DctOu(504145)] as t504145 (tp2) ON ({t504143.ShopId?}? = {t504145.Id})
				LEFT JOIN [UacUsersDatagroup(504148)] as t504148 (cudg) ON ({t504145.Id} = {t504148.DatagroupId} AND {t504148.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(504153)] as t504153 (oudg) ON ({t504145.ParentId?}? = {t504153.DatagroupId} AND {t504153.UserId} = 150 AND {t504153.Inheritablepermission} > 0)
				INNER JOIN [Deviation(504173)] as t504173 (d) ON ({t504143.WellId?}? = {t504173.WellId})
		)  ON ({t504173.SetpointtypeId} = {t504140.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t504148.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t504153.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
