module ApplicationProcessesHelper
  include PdfHelper
  include ApplicationProcessesPdfHelper

  def association_klass_scoped(association, klass, record)
    if association.name == :letter_template
      super.letter.published
    elsif association.name == :form_template
      super.not_letter.published
    else
      super
    end
  end

end