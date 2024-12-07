(194163) SELECT 
	t194163.Id = t194162.Id
FROM [DctSetpointtype(194162)] as t194162 (spt)
		LEFT JOIN (
			[VWellTree(194165)] as t194165 (t2)
				INNER JOIN [DctOu(194167)] as t194167 (tp2) ON ({t194165.ShopId?}? = {t194167.Id})
				LEFT JOIN [UacUsersDatagroup(194170)] as t194170 (cudg) ON ({t194167.Id} = {t194170.DatagroupId} AND {t194170.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(194175)] as t194175 (oudg) ON ({t194167.ParentId?}? = {t194175.DatagroupId} AND {t194175.UserId} = 150 AND {t194175.Inheritablepermission} > 0)
				INNER JOIN [Deviation(194195)] as t194195 (d) ON ({t194165.WellId?}? = {t194195.WellId})
		)  ON ({t194195.SetpointtypeId} = {t194162.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t194170.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t194175.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
