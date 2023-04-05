class EmployeesController < ApplicationController
  def new
    @company_id = params[:company_id]
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to edit_company_path(@employee.company), notice: "Employee added"
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    @company_id = @employee.company_id
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to edit_company_path(@employee.company), notice: "Employee updated"
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    if @employee.destroy
      redirect_to edit_company_path(@employee.company), notice: "Employee deleted"
    else
      redirect_to edit_company_path(@employee.company)
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :surname, :email, :phone_number, :company_id)
  end
end
