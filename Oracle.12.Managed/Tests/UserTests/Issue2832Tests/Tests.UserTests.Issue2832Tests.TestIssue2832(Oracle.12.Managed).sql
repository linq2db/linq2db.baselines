(140776) SELECT 
	t140776.Id = t140775.Id
FROM [DctSetpointtype(140775)] as t140775 (spt)
		LEFT JOIN (
			[VWellTree(140778)] as t140778 (t2)
				INNER JOIN [DctOu(140780)] as t140780 (tp2) ON ({t140778.ShopId?}? = {t140780.Id})
				LEFT JOIN [UacUsersDatagroup(140783)] as t140783 (cudg) ON ({t140780.Id} = {t140783.DatagroupId} AND {t140783.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140788)] as t140788 (oudg) ON ({t140780.ParentId?}? = {t140788.DatagroupId} AND {t140788.UserId} = 150 AND {t140788.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140808)] as t140808 (d) ON ({t140778.WellId?}? = {t140808.WellId})
		)  ON ({t140808.SetpointtypeId} = {t140775.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140783.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140788.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
