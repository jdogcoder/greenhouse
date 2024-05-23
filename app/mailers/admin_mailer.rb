# frozen_string_literal: true

class AdminMailer < ApplicationMailer
  default from: "noreply@greenhouse.directory"

  # TODO: Actually design this view
  def notify_missing_approver(agent)
    @agent = agent
    mail(to: "admin@greenhouse.directory", subject: "[ACTION] ~ Missing Agent Approver")
  end

  # TODO: Actually design this view
  def notify_new_agent_for_approval(agent)
    @agent = agent
    mail(to: "admin@greenhouse.directory", subject: "[ACTION] ~ New Agent Approval needed.")
  end

end
