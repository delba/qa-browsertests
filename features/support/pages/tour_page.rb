class TourPage
  include PageObject

  a(:edit, text: 'Edit source')
  div(:guider1, id: 'gt-gettingstarted-1')
  div(:guider2, id: 'gt-gettingstarted-2')
  div(:guider3, id: 'gt-gettingstarted-3')
  div(:guider4, id: 'gt-gettingstarted-4')
  div(:guider5, id: 'gt-gettingstarted-5')
  a(:next, text: 'Next')
  button(:preview, id: 'wpPreview')
  button(:submit_changes, id: "wpSave")
  text_field(:text, id: "wpTextbox1")
end
