(140857) SELECT 
	t140857.Id = t140856.Id
FROM [DctSetpointtype(140856)] as t140856 (spt)
		LEFT JOIN (
			[VWellTree(140859)] as t140859 (t2)
				INNER JOIN [DctOu(140861)] as t140861 (tp2) ON ({t140859.ShopId?}? = {t140861.Id})
				LEFT JOIN [UacUsersDatagroup(140864)] as t140864 (cudg) ON ({t140861.Id} = {t140864.DatagroupId} AND {t140864.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140869)] as t140869 (oudg) ON ({t140861.ParentId?}? = {t140869.DatagroupId} AND {t140869.UserId} = 150 AND {t140869.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140889)] as t140889 (d) ON ({t140859.WellId?}? = {t140889.WellId})
		)  ON ({t140889.SetpointtypeId} = {t140856.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140864.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140869.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
