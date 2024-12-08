(239834) SELECT 
	t239834.Id = t239833.Id
FROM [DctSetpointtype(239833)] as t239833 (spt)
		LEFT JOIN (
			[VWellTree(239836)] as t239836 (t2)
				INNER JOIN [DctOu(239838)] as t239838 (tp2) ON ({t239836.ShopId?}? = {t239838.Id})
				LEFT JOIN [UacUsersDatagroup(239841)] as t239841 (cudg) ON ({t239838.Id} = {t239841.DatagroupId} AND {t239841.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239846)] as t239846 (oudg) ON ({t239838.ParentId?}? = {t239846.DatagroupId} AND {t239846.UserId} = 150 AND {t239846.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239866)] as t239866 (d) ON ({t239836.WellId?}? = {t239866.WellId})
		)  ON ({t239866.SetpointtypeId} = {t239833.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239841.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239846.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
