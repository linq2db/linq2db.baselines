(503543) SELECT 
	t503543.Id = t503542.Id
FROM [DctSetpointtype(503542)] as t503542 (spt)
		LEFT JOIN (
			[VWellTree(503545)] as t503545 (t2)
				INNER JOIN [DctOu(503547)] as t503547 (tp2) ON ({t503545.ShopId?}? = {t503547.Id})
				LEFT JOIN [UacUsersDatagroup(503550)] as t503550 (cudg) ON ({t503547.Id} = {t503550.DatagroupId} AND {t503550.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(503555)] as t503555 (oudg) ON ({t503547.ParentId?}? = {t503555.DatagroupId} AND {t503555.UserId} = 150 AND {t503555.Inheritablepermission} > 0)
				INNER JOIN [Deviation(503575)] as t503575 (d) ON ({t503545.WellId?}? = {t503575.WellId})
		)  ON ({t503575.SetpointtypeId} = {t503542.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t503550.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t503555.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
