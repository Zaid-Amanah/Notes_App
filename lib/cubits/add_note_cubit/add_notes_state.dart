part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class NotesInitial extends AddNotesState {}

class AddNoteInitial extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class AddNoteSuccess extends AddNotesState {}

class AddNoteFailure extends AddNotesState {
  final String errMessage;
  AddNoteFailure({required this.errMessage});
}
