--CÂU A
Create proc sp_Bai1_a @name nvarchar(20)
as
	begin 
		Print 'Xin chào: '+@name
	end
exec sp_Bai1_a 'Nhóm 11'
--CÂU B
Create proc sp_Bai1_b @numbera int, @numberb int
as 
	begin
		declare @sum int =0;
		set @sum= @numbera + @numberb
		print N'Tổng là:' + cast(@sum as varchar(10))
	end 

exec sp_Bai1_b 10,7
--CÂU C
Create proc sp_Bai1_c @n int, @i int 
as 
	begin
		declare @sum int = 0; 
		while @i < @n
			begin 
				set @sum= @sum + @i
				set @i=@i +2
			end
			print 'Tong so chan: '+ cast(@sum as varchar(10))
	end 

exec sp_Bai1_c 10
--CÂU D
Create proc sp_Bai1_d @a int, @b int 
as 
	begin
		while (@a !=@b)
		begin
			if (@a>@b)
				set @a = @a -@b
			else
				set @b= @b - @a
			end 
		return @a
end

Declare @c int
exec @c= sp_Bai1_d 15,20
print @c