(140825) SELECT 
	t140825.Id = t140824.Id
FROM [DctSetpointtype(140824)] as t140824 (spt)
		LEFT JOIN (
			[VWellTree(140827)] as t140827 (t2)
				INNER JOIN [DctOu(140829)] as t140829 (tp2) ON ({t140827.ShopId?}? = {t140829.Id})
				LEFT JOIN [UacUsersDatagroup(140832)] as t140832 (cudg) ON ({t140829.Id} = {t140832.DatagroupId} AND {t140832.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140837)] as t140837 (oudg) ON ({t140829.ParentId?}? = {t140837.DatagroupId} AND {t140837.UserId} = 150 AND {t140837.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140857)] as t140857 (d) ON ({t140827.WellId?}? = {t140857.WellId})
		)  ON ({t140857.SetpointtypeId} = {t140824.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140832.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140837.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
