(241141) SELECT 
	t241141.Id = t241140.Id
FROM [DctSetpointtype(241140)] as t241140 (spt)
		LEFT JOIN (
			[VWellTree(241143)] as t241143 (t2)
				INNER JOIN [DctOu(241145)] as t241145 (tp2) ON ({t241143.ShopId?}? = {t241145.Id})
				LEFT JOIN [UacUsersDatagroup(241148)] as t241148 (cudg) ON ({t241145.Id} = {t241148.DatagroupId} AND {t241148.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(241153)] as t241153 (oudg) ON ({t241145.ParentId?}? = {t241153.DatagroupId} AND {t241153.UserId} = 150 AND {t241153.Inheritablepermission} > 0)
				INNER JOIN [Deviation(241173)] as t241173 (d) ON ({t241143.WellId?}? = {t241173.WellId})
		)  ON ({t241173.SetpointtypeId} = {t241140.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t241148.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t241153.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
