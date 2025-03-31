class Employee{
  double getGrossSalary(double base, [double? bonus]){
    return base + (bonus ?? 0);
  }

  double getNetSalary({required double deduction, required double grossSalary}){
    return grossSalary - deduction;
  }
}