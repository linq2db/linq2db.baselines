(238008) SELECT 
	t238008.Id = t238007.Id
FROM [DctSetpointtype(238007)] as t238007 (spt)
		LEFT JOIN (
			[VWellTree(238010)] as t238010 (t2)
				INNER JOIN [DctOu(238012)] as t238012 (tp2) ON ({t238010.ShopId?}? = {t238012.Id})
				LEFT JOIN [UacUsersDatagroup(238015)] as t238015 (cudg) ON ({t238012.Id} = {t238015.DatagroupId} AND {t238015.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(238020)] as t238020 (oudg) ON ({t238012.ParentId?}? = {t238020.DatagroupId} AND {t238020.UserId} = 150 AND {t238020.Inheritablepermission} > 0)
				INNER JOIN [Deviation(238040)] as t238040 (d) ON ({t238010.WellId?}? = {t238040.WellId})
		)  ON ({t238040.SetpointtypeId} = {t238007.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t238015.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t238020.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
