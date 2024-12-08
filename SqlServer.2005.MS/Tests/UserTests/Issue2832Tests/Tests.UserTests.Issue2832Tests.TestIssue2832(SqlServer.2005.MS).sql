(218661) SELECT 
	t218661.Id = t218660.Id
FROM [DctSetpointtype(218660)] as t218660 (spt)
		LEFT JOIN (
			[VWellTree(218663)] as t218663 (t2)
				INNER JOIN [DctOu(218665)] as t218665 (tp2) ON ({t218663.ShopId?}? = {t218665.Id})
				LEFT JOIN [UacUsersDatagroup(218668)] as t218668 (cudg) ON ({t218665.Id} = {t218668.DatagroupId} AND {t218668.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(218673)] as t218673 (oudg) ON ({t218665.ParentId?}? = {t218673.DatagroupId} AND {t218673.UserId} = 150 AND {t218673.Inheritablepermission} > 0)
				INNER JOIN [Deviation(218693)] as t218693 (d) ON ({t218663.WellId?}? = {t218693.WellId})
		)  ON ({t218693.SetpointtypeId} = {t218660.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t218668.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t218673.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
