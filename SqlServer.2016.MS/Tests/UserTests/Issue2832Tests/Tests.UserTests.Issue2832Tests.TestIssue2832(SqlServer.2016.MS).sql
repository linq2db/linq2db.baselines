(242247) SELECT 
	t242247.Id = t242246.Id
FROM [DctSetpointtype(242246)] as t242246 (spt)
		LEFT JOIN (
			[VWellTree(242249)] as t242249 (t2)
				INNER JOIN [DctOu(242251)] as t242251 (tp2) ON ({t242249.ShopId?}? = {t242251.Id})
				LEFT JOIN [UacUsersDatagroup(242254)] as t242254 (cudg) ON ({t242251.Id} = {t242254.DatagroupId} AND {t242254.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(242259)] as t242259 (oudg) ON ({t242251.ParentId?}? = {t242259.DatagroupId} AND {t242259.UserId} = 150 AND {t242259.Inheritablepermission} > 0)
				INNER JOIN [Deviation(242279)] as t242279 (d) ON ({t242249.WellId?}? = {t242279.WellId})
		)  ON ({t242279.SetpointtypeId} = {t242246.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t242254.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t242259.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
